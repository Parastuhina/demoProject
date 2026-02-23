import * as React from "react";

import { cn } from "../../lib/utils";

type ButtonVariant = "default" | "secondary" | "outline" | "ghost";
type ButtonSize = "default" | "sm" | "lg";

type ButtonVariantOptions = {
  variant?: ButtonVariant;
  size?: ButtonSize;
  className?: string;
};

const baseButtonStyles =
  "inline-flex items-center justify-center rounded-full font-semibold transition-all duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-rose-400 focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50";

const variantStyles: Record<ButtonVariant, string> = {
  default:
    "bg-gradient-to-r from-rose-500 to-pink-500 text-white shadow-[0_10px_30px_rgba(244,114,182,0.3)] hover:-translate-y-0.5 hover:from-rose-600 hover:to-pink-600",
  secondary:
    "bg-white text-rose-600 ring-1 ring-rose-200 hover:-translate-y-0.5 hover:bg-rose-50",
  outline:
    "bg-transparent text-white ring-1 ring-white/60 hover:-translate-y-0.5 hover:bg-white/15",
  ghost: "bg-transparent text-slate-600 hover:bg-rose-50 hover:text-rose-600",
};

const sizeStyles: Record<ButtonSize, string> = {
  default: "h-11 px-6 text-sm",
  sm: "h-9 px-4 text-sm",
  lg: "h-12 px-7 text-sm",
};

export function buttonVariants({
  variant = "default",
  size = "default",
  className,
}: ButtonVariantOptions = {}) {
  return cn(baseButtonStyles, variantStyles[variant], sizeStyles[size], className);
}

export interface ButtonProps
  extends React.ButtonHTMLAttributes<HTMLButtonElement>,
    ButtonVariantOptions {}

export const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  ({ className, variant = "default", size = "default", ...props }, ref) => (
    <button
      ref={ref}
      className={buttonVariants({ variant, size, className })}
      {...props}
    />
  )
);

Button.displayName = "Button";
