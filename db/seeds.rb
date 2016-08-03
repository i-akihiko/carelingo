SymptomDetail.create!([
  {name: "One side of my head hurts"},
  {name: "Both side of my head hurts"},
  {name: "I feel nauseous"},
  {name: "I feel sensitive to light and sound"},
  {name: "I have continuous pain"},
  {name: "I have throbbing/pulsating pain"}
])
Ingredient.create!([
  {name: "Acetaminophen", explanation: "Acetaminophen is a pain reliever and a fever reducer. XXX"},
  {name: "Ibuprofen", explanation: "YYY"}
])
Language.create!([
  {name: "English", locale: "en"},
  {name: "Spanish", locale: "es"},
  {name: "Chinese", locale: "zh-CN"}
])
Location.create!([
  {name: "New York"},
  {name: "Boston"}
])
Medicine.create!([
  {name: "Tylenol", min_price: 10, max_price: 15, description: "Tylenol helps with pain relief and reduces fever. XXX", image_url: "", size: "24 EA"},
  {name: "Adult Liquid Pain Relief", min_price: 13, max_price: 17, description: "", image_url: "", size: ""},
  {name: "Dayquil", min_price: 12, max_price: 14, description: "", image_url: "", size: ""},
  {name: "Advil", min_price: 15, max_price: 20, description: "", image_url: "", size: ""},
  {name: "Motrin", min_price: 15, max_price: 18, description: "", image_url: "", size: ""},
  {name: "Aleve", min_price: 18, max_price: 28, description: "", image_url: "", size: ""}
])
Symptom.create!([
  {name: "Headache"},
  {name: "Cough"},
  {name: "Sore Throat"},
  {name: "Pollen Allergies"},
  {name: "Stomachache"},
  {name: "Nasal Congestion"},
  {name: "Nausea"}
])
