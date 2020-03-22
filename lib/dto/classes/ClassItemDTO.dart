class ClassItemDTO {

  int id;
  String title;
  String subTitle;
  double rate;
  String schedule;
  int participantsIn;
  int participantsMax;

  ClassItemDTO();

  factory ClassItemDTO.create(int id, String title, String subTitle, double rate, String schedule, int participantsIn, int participantsMax) {
    ClassItemDTO dto = ClassItemDTO();
    dto.id = id;
    dto.title = title;
    dto.subTitle = subTitle;
    dto.rate = rate;
    dto.schedule = schedule;
    dto.participantsIn = participantsIn;
    dto.participantsMax = participantsMax;
    return dto;
  }

}