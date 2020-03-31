'use strict';

describe('Office', function() {
  var office;
  var meetingRooma;
  var meetingRoomb;
beforeEach(function() {
  office = new Office();
});

describe('.add meeting room', function() {
it('can add new meeting rooms to the list', function() {
    var room;
    this.rooms = [];
      //spyOn(this.rooms ,push());
    expect(office.addRoom(room)).toEqual(room);
});

it('can list all meeting rooms', function(){
  office.addRoom("rooma");
  office.addRoom("roomb");
  office.addRoom("roomc");
  expect(office.allRooms()).toContain("rooma" ,"roomb","roomc");
});

it('can list all available meeting rooms', function(){
  meetingRooma = new MeetingRoom();
  meetingRoomb = new MeetingRoom();
  meetingRooma.enter_room
  office.addRoom(meetingRooma);
  office.addRoom(meetingRoomb);
  expect(office.availableRooms()).toContain(meetingRoomb);
});

describe('can remove meeting room', function() {
  it('removes a meeting room from the list', function() {
    meetingRooma = new MeetingRoom();
    meetingRoomb = new MeetingRoom();
    expect(office.availableRooms()).toContain(meetingRooma);
})
});
});
