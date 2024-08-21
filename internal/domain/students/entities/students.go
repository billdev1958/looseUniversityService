package student

import (
	"time"

	"github.com/google/uuid"
)

type student struct {
	ID        int
	AccountID uuid.UUID
	Name      string
	Lastname1 string
	Lastname2 string
	CreatedAt time.Time
	UpdatedAt time.Time
}

type account struct {
	AccountID         uuid.UUID
	UserID            int
	Email             string
	Password          string
	CreatedAt         time.Time
	UpdatedAt         time.Time
	PasswordChangedAt time.Time
}
