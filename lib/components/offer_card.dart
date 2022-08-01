import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.84,
        height: 20,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF6200EE).withOpacity(0.06),
                offset: const Offset(0, 20),
                blurRadius: 40,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, bottom: 18.0, right: 18),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAlias,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/images/berlin.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      "Hilton Thai",
                      style: TextStyle(
                          color: Color(0xFF151C2A),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'From \$345',
                      style: TextStyle(
                        color: Color(0xFF7E8EAA),
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      '4.8',
                      style: TextStyle(
                        color: Color(0xFF7E8EAA),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.star, size: 11, color: Color(0xFF7E8EAA)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
