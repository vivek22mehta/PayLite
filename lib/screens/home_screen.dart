import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PayLite'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
              const Center(
                child: Text(
                  'Hello, Vivek',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
                // child: Text(
                //   'Manage your payments easily',
                //   style: TextStyle(fontSize: 15),
                // ),
              // ),

              // const SizedBox(height: 5),

              // const Text(
              //   'Manage your payments easily',
              //   style: TextStyle(fontSize: 15),
              // ),

              const SizedBox(height: 20),

              // Balance Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Available Balance', style: TextStyle(fontSize: 16)),

                    SizedBox(height: 10),

                    Text(
                      '₹1,25,000',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Quick Actions
              const Text(
                'Quick Actions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              // First row
              Row(
                children: [
                  Expanded(
                    child: _actionCard(
                      icon: Icons.qr_code_scanner,
                      title: 'Scan & Pay',
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: _actionCard(icon: Icons.send, title: 'Pay to VPA'),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Second row
              Row(
                children: [
                  Expanded(
                    child: _actionCard(
                      icon: Icons.request_page,
                      title: 'Request Money',
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: _actionCard(
                      icon: Icons.receipt_long,
                      title: 'Split Bill',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Recent Transactions
              const Text(
                'Recent Transactions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              _transactionTile(
                name: 'Rahul Kumar',
                amount: '- ₹500',
                icon: Icons.person,
              ),

              _transactionTile(
                name: 'Amit Sharma',
                amount: '+ ₹1,000',
                icon: Icons.person,
              ),

              _transactionTile(
                name: 'Electricity Bill',
                amount: '- ₹1,250',
                icon: Icons.electric_bolt,
              ),

              _transactionTile(
                name: 'Salary',
                amount: '+ ₹30,000',
                icon: Icons.account_balance,
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  // Payment action card
  static Widget _actionCard({required IconData icon, required String title}) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),

      child: Column(
        children: [
          Icon(icon, size: 35),

          const SizedBox(height: 10),

          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  // Transaction item
  static Widget _transactionTile({
    required String name,
    required String amount,
    required IconData icon,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: CircleAvatar(child: Icon(icon)),

      title: Text(name),

      trailing: Text(
        amount,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
