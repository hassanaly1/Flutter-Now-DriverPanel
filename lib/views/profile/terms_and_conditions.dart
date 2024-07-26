import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_text.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

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
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Center(
                  child: CustomTextWidget(
                    text: 'Terms And Conditions',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: context.height * 0.02),
                const Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: '1. Acceptance of Terms',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'By using the Driver Panel, you agree to be bound by these terms and conditions, including any future amendments or updates. If you do not agree, please do not use the service.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '2. Eligibility',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You must be at least 18 years old and possess a valid driver\'s license to use the Driver Panel. You must also have a registered and insured vehicle.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '3. Service Description',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'The Driver Panel allows you to manage food deliveries, package deliveries, document deliveries, ride-share, and ride services.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '4. Driver Obligations',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text: 'You agree to:',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          CustomTextWidget(
                            text: 'a. Follow all traffic laws and regulations.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          CustomTextWidget(
                            text:
                                'b. Deliver packages, food, and documents on time.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          CustomTextWidget(
                            text:
                                'c. Maintain the cleanliness and safety of your vehicle.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          CustomTextWidget(
                            text:
                                'd. Provide courteous and professional service to all users.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '5. Payment and Fees',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You will be compensated for your services according to the rates outlined in the Driver Panel. All payments will be processed through the app.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '6. Termination',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'We reserve the right to terminate or suspend your access to the Driver Panel at any time, without notice, for any reason, including violation of these terms.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '7. Liability',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'We are not liable for any damages or losses resulting from your use of the Driver Panel, including but not limited to accidents, theft, or injury.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '8. Privacy',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'Your personal information will be used in accordance with our Privacy Policy.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '9. Changes to Terms',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'We may update these terms and conditions from time to time. Continued use of the Driver Panel constitutes acceptance of the updated terms.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '10. Governing Law',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'These terms and conditions are governed by the laws of the jurisdiction in which you operate.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '11. Contact Information',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'For any questions or concerns, please contact our support team through the app.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '12. Vehicle Maintenance',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You are responsible for ensuring that your vehicle is regularly maintained and in good working condition.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '13. Insurance',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You must have valid insurance coverage for your vehicle at all times while using the Driver Panel.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '14. Background Checks',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You agree to undergo background checks as required by our policies or applicable law.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '15. Health and Safety',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You agree to follow all health and safety guidelines provided by the company and local authorities.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '16. User Ratings',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'Your performance will be rated by users, and consistently low ratings may result in termination of your access to the Driver Panel.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '17. Dispute Resolution',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'Any disputes arising from your use of the Driver Panel will be resolved through binding arbitration, in accordance with our dispute resolution policy.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '18. Prohibited Conduct',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You agree not to engage in any illegal, harmful, or unethical conduct while using the Driver Panel.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '19. Confidentiality',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You agree to keep all user information and company data confidential, and not to disclose it to any third party without authorization.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '20. Severability',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'If any provision of these terms is found to be invalid or unenforceable, the remaining provisions will remain in full force and effect.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '21. Entire Agreement',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'These terms and conditions constitute the entire agreement between you and the company regarding the use of the Driver Panel.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '22. Amendment of Terms',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'We reserve the right to amend these terms and conditions at any time. Continued use of the Driver Panel signifies your acceptance of the amended terms.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '23. Compliance with Laws',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You agree to comply with all applicable local, state, and federal laws while using the Driver Panel.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '24. Feedback and Suggestions',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'We welcome your feedback and suggestions to improve the Driver Panel. Please share your thoughts through the designated feedback channels.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '25. Relationship of Parties',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'You are an independent contractor and not an employee, agent, or partner of the company. Nothing in these terms creates a partnership or employment relationship.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '26. Notices',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'Any notices or communications required under these terms will be sent to you via the app or email. You are responsible for keeping your contact information updated.',
                            fontSize: 14.0,
                            maxLines: 10,
                          ),
                          SizedBox(height: 10.0),
                          CustomTextWidget(
                            text: '27. Force Majeure',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                'The company is not liable for any failure to perform its obligations due to causes beyond its reasonable control, including natural disasters, war, or acts of terrorism.',
                            fontSize: 14.0,
                            maxLines: 10,
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
