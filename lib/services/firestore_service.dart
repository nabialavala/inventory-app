import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/item.dart';

class FirestoreService {
  final CollectionReference<Map<String, dynamic>> itemsRef = FirebaseFirestore.instance.collection('items');
  
  Future<void> addItem(Item item) async {
    await itemsRef.add(item.toMap());
  }

  Stream<List<Item>> streamItems() {
    return itemsRef.snapshots().map(
      (snapshot) => snapshot.docs
        .map((doc) => Item.fromMap(doc.id, doc.data()))
        .toList(),
    );
  }

  Future<void> updateItem(Item item) async {
    if(item.id == null) return;
    await itemsRef.doc(item.id).update(item.toMap());
  }

  Future<void> deletItem(String id) async {
    await itemsRef.doc(id).delete();
  }
}