package subject

import "time"

type subject struct {
	ID        int
	Name      string
	CreatedAt time.Time
	UpdatedAt time.Time
}
