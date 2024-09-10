class ActorBioUpdateJob
  include Sidekiq::Job

  def perform(actor_id)
    actor = Actor.find(actor_id)
    return if actor.bio.present?

    actor.update!(bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
  end
end
