'use strict';

class Office{
    constructor(meetingrooms = []) {
        this._meetingrooms = meetingrooms
      };
      meetingrooms() {
        return this._meetingrooms;
      };
      AddMeetingRoom(meetingroom) {
          this._meetingrooms.push(meetingroom);
      };
};
