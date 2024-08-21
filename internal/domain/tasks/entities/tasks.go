package task

import (
	"time"

	"github.com/google/uuid"
)

type Task struct {
	AccountID uuid.UUID
	ID        int
	Subject   int
	Name      string
	CreatedAt time.Time
	UpdatedAt time.Time
	ExpiredAt time.Time
}
