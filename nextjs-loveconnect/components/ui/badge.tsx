import * as React from "react";

import { cn } from "../../lib/utils";

type BadgeVariant = "default" | "secondary";

export interface BadgeProps extends React.HTMLAttributes<HTMLDivElement> {
  variant?: BadgeVariant;
}

export function Badge({
  className,
  variant = "default",
  ...props
}: BadgeProps) {
  return (
    <div
      className={cn(
        "inline-flex items-center rounded-full px-3 py-1 text-xs font-semibold uppercase tracking-wide",
        variant === "default"
          ? "bg-rose-100 text-rose-600"
          : "bg-pink-100 text-pink-600",
        className
      )}
      {...props}
    />
  );
}
