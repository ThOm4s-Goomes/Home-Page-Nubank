import 'package:flutter/material.dart';

class DialogCustomer extends StatefulWidget {
  const DialogCustomer({super.key});

  @override
  State<DialogCustomer> createState() => _DialogCustomerState();
}

class _DialogCustomerState extends State<DialogCustomer> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: 350.0,
          height: 380,
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/caixa.png', width: 160, color: const Color(0xFF8A2BE2)),
                    const Text('Archiver campaing ?', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 10),
                    const Text('Team member will no longer be able to upload photos to an archived campaign. You can always un-archiver campaigns that have been archived.'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: true, onChanged: (value) {}, checkColor: Colors.white, activeColor: const Color(0xFF8A2BE2)),
                  const Text('Don t show me agan next time '),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: const Center(child: Text('CANCEL', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: const Color(0xFF8A2BE2), width: 2),
                          color: const Color(0xFF8A2BE2),
                        ),
                        child: const Center(child: Text('ARCHIVER', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
