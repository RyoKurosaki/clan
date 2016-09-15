class SchedulesController < ApplicationController
  before_action :authenticate_user!, :set_schedule, only: [:edit, :update, :destroy]

  def index
  end

  def get_events
    @schedules = Schedule.joins(:user).preload(:user).where("create_user = ? or clan_event = ?", current_user.id, true)
    render "get_events", :formats => [:json], :handlers => [:jbuilder]
  end

  def new
    @schedule = Schedule.new
    @schedule.event_start = params[:start]
    @schedule.event_end = params[:start]
  end

  def edit
  end

  def create
    @schedule = Schedule.create(schedule_params)
    @schedules = Schedule.all
  end

  def update
    @schedule = Schedule.update(schedule_params)
    @schedules = Schedule.all
  end

  def destroy
    @schedule.destroy
  end

  private
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:name, :event_start, :event_end, :clan_event, :create_user)
    end
end
