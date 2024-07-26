import 'package:flutter/material.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_text.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: AppBar(
            backgroundColor: AppColors.textColor,
            forceMaterialTransparency: true,
            title: const CustomTextWidget(
              text: 'Help Center',
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HelpTopic(
                            title: 'How to Get Started',
                            description:
                                'To get started with the Driver Panel, you need to complete the following steps:\n\n1. **Create an Account**: Sign up with your email and set a secure password.\n2. **Verify Your Email**: Check your email for a verification link to activate your account.\n3. **Set Up Your Profile**: Enter your personal details and upload your driver’s license and vehicle registration documents.\n4. **Complete Onboarding**: Go through the onboarding process to understand how to use the Driver Panel effectively.\n5. **Start Accepting Rides**: Once your account is approved, you can start accepting delivery requests and rides.\n\nFor detailed instructions, refer to the \'Getting Started\' guide in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Managing Deliveries',
                            description:
                                'Here’s how you can efficiently manage your deliveries:\n\n1. **Accepting Requests**: Check the available delivery requests in your dashboard and accept those that fit your schedule.\n2. **Navigating to the Pickup Location**: Use the integrated navigation feature to get directions to the pickup location.\n3. **Handling Deliveries**: Ensure you follow the instructions provided for each delivery, including handling packages with care.\n4. **Marking Deliveries Complete**: Once you have delivered the item, mark the delivery as complete in the app.\n5. **Tracking Your Progress**: Use the app to track your completed deliveries and earnings.\n\nFor tips on managing different types of deliveries, refer to our detailed \'Managing Deliveries\' section.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Payment Issues',
                            description:
                                'If you encounter payment issues, follow these steps:\n\n1. **Verify Payment Details**: Ensure that your payment information is correctly entered and up-to-date.\n2. **Check Payment History**: Review your payment history in the app to confirm transactions and identify any discrepancies.\n3. **Contact Support**: If you find any errors or have not received your payment, contact our support team through the app for assistance.\n4. **Resolve Discrepancies**: Provide any necessary documentation or information requested by the support team to resolve payment issues.\n\nFor more information, check the \'Payment Issues\' FAQ section in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Vehicle Maintenance',
                            description:
                                'Maintaining your vehicle is crucial for safe and efficient operations. Here’s what you need to do:\n\n1. **Regular Inspections**: Conduct regular inspections of your vehicle’s tires, brakes, lights, and engine.\n2. **Routine Servicing**: Schedule regular service appointments to keep your vehicle in top condition.\n3. **Clean Your Vehicle**: Keep your vehicle clean, both inside and out, to ensure a pleasant experience for yourself and your customers.\n4. **Report Issues**: Report any significant issues or malfunctions immediately to avoid downtime.\n\nFor detailed maintenance checklists, refer to the \'Vehicle Maintenance\' section in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Insurance Requirements',
                            description:
                                'To ensure you are covered while using the Driver Panel, please follow these guidelines:\n\n1. **Valid Insurance**: Maintain valid vehicle insurance that meets our minimum coverage requirements.\n2. **Documentation**: Upload proof of insurance in your profile for verification purposes.\n3. **Coverage Limits**: Ensure your insurance coverage meets or exceeds the limits specified in our policy guidelines.\n4. **Update Information**: Notify us of any changes to your insurance policy or coverage.\n\nFor more details on insurance requirements, refer to the \'Insurance Requirements\' guide in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Safety Guidelines',
                            description:
                                'Safety is a top priority. Follow these guidelines to ensure a safe working environment:\n\n1. **Drive Responsibly**: Adhere to all traffic laws and drive safely at all times.\n2. **Use Safety Equipment**: Always use your seatbelt and ensure that your vehicle’s safety features are functional.\n3. **Emergency Procedures**: Familiarize yourself with emergency procedures and keep an emergency kit in your vehicle.\n4. **Report Incidents**: Immediately report any safety incidents or accidents to our support team and local authorities.\n\nFor more information, review the \'Safety Guidelines\' section in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Technical Support',
                            description:
                                'If you experience technical issues with the Driver Panel, here’s what to do:\n\n1. **Restart the App**: Close and reopen the app to see if the issue resolves itself.\n2. **Update the App**: Ensure you have the latest version of the app installed.\n3. **Clear Cache**: Clear the app’s cache to resolve any temporary issues.\n4. **Contact Support**: If the problem persists, contact our technical support team through the app with detailed information about the issue.\n\nFor troubleshooting tips, refer to the \'Technical Support\' section in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Account Management',
                            description:
                                'Manage your account with the following steps:\n\n1. **Update Personal Information**: Access your profile settings to update your personal details, including your contact information.\n2. **Change Password**: If needed, change your password from the account settings page.\n3. **Deactivate Account**: If you wish to deactivate your account, follow the instructions in the \'Account Management\' section.\n4. **Recover Account**: Use the account recovery options if you forget your password or encounter access issues.\n\nFor detailed instructions, visit the \'Account Management\' guide in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Feedback and Suggestions',
                            description:
                                'We value your feedback. Here’s how you can share your thoughts:\n\n1. **Submit Feedback**: Use the in-app feedback form to provide your suggestions or report issues.\n2. **Participate in Surveys**: Occasionally, we may conduct surveys to gather user opinions and improve our services.\n3. **Contact Us**: Reach out to us directly through the support channels for detailed feedback or suggestions.\n\nFor more details, check the \'Feedback and Suggestions\' section in the app.',
                          ),
                          SizedBox(height: 10.0),
                          HelpTopic(
                            title: 'Contact Support',
                            description:
                                'If you need further assistance, you can contact our support team:\n\n1. **In-App Support**: Use the support feature within the app to send your queries or issues.\n2. **Email Support**: Send an email to our support address provided in the app for detailed inquiries.\n3. **Phone Support**: Call our support hotline for urgent assistance.\n\nFor specific contact details, refer to the \'Contact Support\' section in the app.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelpTopic extends StatelessWidget {
  final String title;
  final String description;

  const HelpTopic({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.lightGreyColor),
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(12.0),
        backgroundColor: Colors.grey.shade200,
        collapsedBackgroundColor: Colors.grey.shade100,
        iconColor: AppColors.primaryColor,
        collapsedShape: ShapeBorder.lerp(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          1.0,
        ),
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          1.0,
        ),
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        visualDensity: VisualDensity.compact,
        title: CustomTextWidget(
          text: title,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextWidget(
              text: description,
              fontSize: 14.0,
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }
}
