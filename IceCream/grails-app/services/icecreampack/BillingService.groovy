package icecreampack

import grails.converters.JSON;
import grails.transaction.Transactional
import icecreampack.Billing;

import java.text.SimpleDateFormat
import  java.lang.Float;

@Transactional
class BillingService {
	
	static transactional=true

	def serviceMethod() {

	}
	def grailsApplication
	
		def getInstance() {
			log.info("BillingService getInstance ")
			try{
				return new Billing()
			}
			catch(Exception e) {
				log.info("BillingService getInstance Exception::"+e)
			}
		}
		def save(Billing billingInstance) {
			log.info("BillingService save-Object ")
			try{
				if(billingInstance == null) {
					return false
				}
				else{
					def e=billingInstance.save(flush:true)
					log.info("*******"+e)
					return true
				}
			}
			catch(Exception e) {
				log.info("BillingService save-Object Exception::"+e)
			}
		}
		
		/*
		 * To save the data of billing
		 * save service for savebilling action in billingController */
		def save(customerName,createDate,mobileNumber,address,productDesc1,weight1,quantity1,billingType1,price1,offerPercentage1,total1,
					productDesc2,weight2,quantity2,billingType2,price2,offerPercentage2,total2,productDesc3,weight3,quantity3,billingType3,price3,offerPercentage3,total3,
					productDesc4,weight4,quantity4,billingType4,price4,offerPercentage4,total4,productDesc5,weight5,quantity5,billingType5,price5,offerPercentage5,total5,paymentMode,grandTotal,modifiedBy){
			log.info("BillingService save-params ")
			def resultData=new HashMap<>()
			String []args=["Billing"]
			try{
			
				
					def billingInstance=getInstance()
					
						billingInstance.customerName=customerName
						billingInstance.createDate=createDate
						billingInstance.mobileNumber=mobileNumber
						billingInstance.address=address
						
						billingInstance.productDesc1=productDesc1
						billingInstance.weight1=weight1
						billingInstance.quantity1=quantity1
						billingInstance.billingType1=billingType1
						billingInstance.price1=price1
						billingInstance.offerPercentage1=offerPercentage1
						billingInstance.total1=total1
						
						billingInstance.productDesc2=productDesc2
						billingInstance.weight2=weight2
						billingInstance.quantity2=quantity2
						billingInstance.billingType2=billingType2
						billingInstance.price2=price2
						billingInstance.offerPercentage2=offerPercentage2
						billingInstance.total2=total2
						
						billingInstance.productDesc3=productDesc3
						billingInstance.weight3=weight3
						billingInstance.quantity3=quantity3
						billingInstance.billingType3=billingType3
						billingInstance.price3=price3
						billingInstance.offerPercentage3=offerPercentage3
						billingInstance.total3=total3
						
						billingInstance.productDesc4=productDesc4
						billingInstance.weight4=weight4
						billingInstance.quantity4=quantity4
						billingInstance.billingType4=billingType4
						billingInstance.price4=price4
						billingInstance.offerPercentage4=offerPercentage4
						billingInstance.total4=total4
						
						billingInstance.productDesc5=productDesc5
						billingInstance.weight5=weight5
						billingInstance.quantity5=quantity5
						billingInstance.billingType5=billingType5
						billingInstance.price5=price5
						billingInstance.offerPercentage5=offerPercentage5
						billingInstance.total5=total5
						
						billingInstance.paymentMode=paymentMode
						billingInstance.grandTotal=grandTotal
												
						billingInstance.modifiedBy=modifiedBy
						
						billingInstance.modifiedDate=new Date()
						billingInstance.createdDate=new Date()
						
						def sts= save(billingInstance)
						
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						String cDate = sdf1.format(billingInstance.createdDate);
						log.info(cDate)
						
						
						if(sts){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.successmessage",args))
							resultData.put("billingInstance",billingInstance)
							resultData.put("date",cDate)
							
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.insertion.errormessage",args))
						}
				
				
				return resultData
			}
			catch(Exception e) {
				log.info("billingService save Exception::"+e)
			}
		}
			
		/*
		 * To update the data of billing
		 * update service for savebilling action in billingController */
		def update(customerName,createDate,mobileNumber,address,productDesc1,weight1,quantity1,billingType1,price1,offerPercentage1,total1,
					productDesc2,weight2,quantity2,billingType2,price2,offerPercentage2,total2,productDesc3,weight3,quantity3,billingType3,price3,offerPercentage3,total3,
					productDesc4,weight4,quantity4,billingType4,price4,offerPercentage4,total4,productDesc5,weight5,quantity5,billingType5,price5,offerPercentage5,total5,paymentMode,grandTotal,modifiedBy){
				log.info("billingService update")
				def resultData=new HashMap<>()
				String []args=["billing"]
				try{
					def billingInstance=Billing.findByCustomerName(customerName)
					if(billingInstance) {
					
					
						billingInstance.customerName=customerName
						billingInstance.createDate=createDate
						billingInstance.mobileNumber=mobileNumber
						billingInstance.address=address
						
						billingInstance.productDesc1=productDesc1
						billingInstance.weight1=weight1
						billingInstance.quantity1=quantity1
						billingInstance.billingType1=billingType1
						billingInstance.price1=price1
						billingInstance.offerPercentage1=offerPercentage1
						billingInstance.paymentMode=paymentMode
						billingInstance.grandTotal=grandTotal
						
						billingInstance.modifiedBy=modifiedBy
						
						def status=save(billingInstance)
						if(status){
							resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.successmessage",args))
						}
						else{
							resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
							resultData.put(getMessage("default.message.label"),getMessage("default.update.errormessage",args))
						}
					}
					else {
						resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
						resultData.put(getMessage("default.message.label"),getMessage("default.object.notfound",args))
					}
					return resultData
				}
				catch(Exception e) {
					log.info("billingService update Exception")
				}
			}
		
		/*
		 * To Delete the data of billing
		 * Delete service for savebilling action in billingController */
		def delete(customerName) {
			log.info("billingService delete")
			def resultData=new HashMap<>()
			String []args=["billing"]
			try{
				def billingInstance=Billing.findByCustomerName(customerName)
				if(billingInstance) {
					billingInstance.delete flush:true
					resultData.put(getMessage("default.status.label"),getMessage("default.success.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.delete.successmessage",args))
				}
				else{
					resultData.put(getMessage("default.status.label"),getMessage("default.error.message"))
					resultData.put(getMessage("default.message.label"),getMessage("default.delete.errormessage",args))
				}
				return resultData
			}
			catch(Exception e) {
				log.info("billingService delete Exception::"+e)
			}
		}
						
			
		
		def getMessage(String code) {
			return getMessage(code,null)
		}
	
		def getMessage(String code,String[] args) {
			def appCtx = grailsApplication.getMainContext()
			return appCtx.getMessage(code,args,Locale.default)
		}
}
