defmodule OffBroadwayEcto.Options do
  def definition() do
    [
      receive_interval: [
        type: :non_neg_integer,
        doc: """
        The duration (in milliseconds) for which the producer
        waits before making a request for more messages.
        """,
        default: 5000
      ],
      force_interval: [
        type: :boolean,
        doc: """
        Flag to force the interval when scheduling the next
        """,
        default: false
      ],
      demand: [
        doc: """
        Base number of records fetched from the database.
        """,
        default: 10
      ]
    ]
  end
end
