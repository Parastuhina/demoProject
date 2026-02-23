import { Badge } from "@/components/ui/badge";
import { Button, buttonVariants } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";

const features = [
  {
    label: "AI Match",
    title: "Smart Matching",
    description:
      "Compatibility scoring pairs you with people who align with your values, interests, and relationship goals.",
  },
  {
    label: "Safe",
    title: "Verified Profiles",
    description:
      "Photo checks and profile moderation help you connect with real people in a trusted dating environment.",
  },
  {
    label: "Chat",
    title: "Conversation Prompts",
    description:
      "Built-in prompts make first messages easier and lead to more meaningful conversations from day one.",
  },
  {
    label: "Date",
    title: "Date Planner",
    description:
      "Turn matches into real moments with suggested date ideas tailored to both your personalities.",
  },
];

const testimonials = [
  {
    name: "Emma and Ryan",
    result: "Matched in 6 days",
    quote:
      "LoveConnect helped us skip the small talk and connect on values fast. We are now planning our move-in.",
  },
  {
    name: "Nina and Alex",
    result: "Together for 14 months",
    quote:
      "The prompts made our first chat effortless. We clicked immediately and have been traveling together ever since.",
  },
  {
    name: "Jason, 31",
    result: "Found a partner in 3 weeks",
    quote:
      "The app feels intentional and premium. I finally met someone looking for a serious relationship, like me.",
  },
];

const stats = [
  { value: "92%", label: "Match Accuracy" },
  { value: "4.9/5", label: "Average Rating" },
  { value: "30k+", label: "Weekly Matches" },
];

export default function HomePage() {
  return (
    <main className="relative overflow-hidden bg-gradient-to-b from-rose-50 via-pink-50 to-fuchsia-50 text-slate-800">
      <div className="pointer-events-none absolute -left-24 -top-32 h-80 w-80 rounded-full bg-rose-200/60 blur-3xl" />
      <div className="pointer-events-none absolute -right-24 top-48 h-80 w-80 rounded-full bg-fuchsia-200/60 blur-3xl" />

      <header className="relative z-10">
        <nav className="mx-auto flex w-full max-w-6xl items-center justify-between px-5 py-5 sm:px-8">
          <a href="#" className="inline-flex items-center gap-2">
            <span className="inline-flex h-9 w-9 items-center justify-center rounded-xl bg-gradient-to-br from-rose-500 to-pink-500 text-sm font-bold text-white shadow-md">
              LC
            </span>
            <span className="text-lg font-semibold tracking-tight">LoveConnect</span>
          </a>
          <div className="flex items-center gap-3">
            <a
              href="#features"
              className="hidden rounded-full px-4 py-2 text-sm font-medium text-slate-600 transition-colors duration-300 hover:text-rose-500 sm:inline-flex"
            >
              Why LoveConnect
            </a>
            <a
              href="#cta"
              className={buttonVariants({ variant: "secondary", size: "sm" })}
            >
              Get Started
            </a>
          </div>
        </nav>
      </header>

      <section className="relative z-10 mx-auto grid w-full max-w-6xl items-center gap-12 px-5 pb-16 pt-8 sm:px-8 md:grid-cols-2 md:pb-24 md:pt-12">
        <div>
          <Badge className="mb-4 bg-white/80 text-rose-600 ring-1 ring-rose-100">
            Trusted by 2M+ singles worldwide
          </Badge>
          <h1 className="text-4xl font-extrabold leading-tight tracking-tight text-slate-900 sm:text-5xl lg:text-6xl">
            Find your person with{" "}
            <span className="bg-gradient-to-r from-rose-500 to-pink-500 bg-clip-text text-transparent">
              LoveConnect
            </span>
          </h1>
          <p className="mt-5 max-w-xl text-base leading-relaxed text-slate-600 sm:text-lg">
            Meet quality matches based on real compatibility, not endless swipes.
            Build deeper conversations and relationships that last.
          </p>
          <div className="mt-8 flex flex-col gap-3 sm:flex-row sm:items-center">
            <a href="#cta" className={buttonVariants({ size: "lg" })}>
              Start Your Free Match Today
            </a>
            <a
              href="#testimonials"
              className={buttonVariants({ variant: "secondary", size: "lg" })}
            >
              See Real Love Stories
            </a>
          </div>
          <div className="mt-7 grid max-w-md grid-cols-3 gap-4 text-center">
            {stats.map((stat) => (
              <div
                key={stat.label}
                className="rounded-2xl bg-white/80 p-3 ring-1 ring-rose-100"
              >
                <p className="text-xl font-bold text-slate-900">{stat.value}</p>
                <p className="text-xs text-slate-500">{stat.label}</p>
              </div>
            ))}
          </div>
        </div>

        <div className="mx-auto w-full max-w-md">
          <Card className="rounded-3xl border-rose-100 bg-white/85 p-1 shadow-2xl">
            <CardHeader className="pb-4">
              <div className="flex items-center justify-between">
                <CardTitle className="text-sm font-semibold text-slate-700">
                  Today&apos;s Best Match
                </CardTitle>
                <Badge variant="secondary" className="bg-emerald-100 text-emerald-700">
                  Online now
                </Badge>
              </div>
            </CardHeader>
            <CardContent>
              <div className="rounded-2xl bg-gradient-to-br from-rose-100 via-pink-100 to-fuchsia-100 p-4 ring-1 ring-white/80">
                <div className="flex items-center gap-4">
                  <div className="h-14 w-14 rounded-full bg-gradient-to-br from-rose-400 to-pink-500" />
                  <div>
                    <p className="font-semibold text-slate-900">Sophia, 29</p>
                    <p className="text-sm text-slate-600">Book lover and weekend traveler</p>
                  </div>
                </div>
                <p className="mt-4 text-sm text-slate-700">
                  Looking for someone who values deep talks, laughter, and
                  spontaneous coffee dates.
                </p>
              </div>
              <div className="mt-5 grid grid-cols-2 gap-3 text-sm">
                <div className="rounded-xl bg-rose-50 p-3 text-center text-rose-600 ring-1 ring-rose-100">
                  Compatibility: 97%
                </div>
                <div className="rounded-xl bg-pink-50 p-3 text-center text-pink-600 ring-1 ring-pink-100">
                  Shared interests: 8
                </div>
              </div>
              <Button className="mt-5 w-full">Send a Thoughtful Intro</Button>
            </CardContent>
          </Card>
        </div>
      </section>

      <section id="features" className="mx-auto w-full max-w-6xl px-5 py-14 sm:px-8 sm:py-16">
        <div className="text-center">
          <p className="text-sm font-semibold uppercase tracking-wide text-rose-500">
            Features
          </p>
          <h2 className="mt-2 text-3xl font-bold tracking-tight text-slate-900 sm:text-4xl">
            Everything you need to build a real connection
          </h2>
        </div>
        <div className="mt-10 grid gap-5 sm:grid-cols-2 lg:grid-cols-4">
          {features.map((feature) => (
            <Card
              key={feature.title}
              className="border-rose-100 bg-white/90 transition-all duration-300 hover:-translate-y-1 hover:shadow-lg"
            >
              <CardHeader>
                <Badge className="mb-4 w-fit">{feature.label}</Badge>
                <CardTitle>{feature.title}</CardTitle>
              </CardHeader>
              <CardContent>
                <CardDescription>{feature.description}</CardDescription>
              </CardContent>
            </Card>
          ))}
        </div>
      </section>

      <section
        id="testimonials"
        className="mx-auto w-full max-w-6xl px-5 py-14 sm:px-8 sm:py-16"
      >
        <div className="text-center">
          <p className="text-sm font-semibold uppercase tracking-wide text-rose-500">
            Testimonials
          </p>
          <h2 className="mt-2 text-3xl font-bold tracking-tight text-slate-900 sm:text-4xl">
            Real people. Real relationships.
          </h2>
        </div>
        <div className="mt-10 grid gap-5 md:grid-cols-3">
          {testimonials.map((item) => (
            <Card
              key={item.name}
              className="border-rose-100 bg-white/90 transition-all duration-300 hover:-translate-y-1 hover:shadow-lg"
            >
              <CardContent className="pt-6">
                <p className="text-sm leading-relaxed text-slate-700">
                  &quot;{item.quote}&quot;
                </p>
                <div className="mt-5">
                  <p className="font-semibold text-slate-900">{item.name}</p>
                  <p className="text-xs text-slate-500">{item.result}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      </section>

      <section id="cta" className="mx-auto w-full max-w-6xl px-5 pb-16 pt-4 sm:px-8 sm:pb-24">
        <div className="rounded-3xl bg-gradient-to-r from-rose-500 via-pink-500 to-fuchsia-500 px-6 py-10 text-white shadow-2xl sm:px-10 sm:py-12">
          <div className="mx-auto max-w-3xl text-center">
            <h2 className="text-3xl font-bold tracking-tight sm:text-4xl">
              Ready to meet someone worth your time?
            </h2>
            <p className="mt-3 text-sm text-rose-50 sm:text-base">
              Join LoveConnect free and get your first curated matches in under
              5 minutes.
            </p>
            <div className="mt-7 flex flex-col items-center justify-center gap-3 sm:flex-row">
              <a
                href="#"
                className={buttonVariants({
                  variant: "secondary",
                  size: "lg",
                  className:
                    "min-w-52 bg-white text-rose-600 ring-0 hover:bg-rose-50",
                })}
              >
                Create Free Account
              </a>
              <a
                href="#"
                className={buttonVariants({
                  variant: "outline",
                  size: "lg",
                  className: "min-w-52",
                })}
              >
                Book a Quick App Tour
              </a>
            </div>
          </div>
        </div>
      </section>

      <footer className="border-t border-rose-100/80 bg-white/50">
        <div className="mx-auto flex w-full max-w-6xl flex-col items-start justify-between gap-4 px-5 py-8 sm:flex-row sm:items-center sm:px-8">
          <p className="text-sm text-slate-600">
            Copyright 2026 LoveConnect. Made for meaningful relationships.
          </p>
          <div className="flex gap-5 text-sm">
            <a className="text-slate-500 transition-colors duration-300 hover:text-rose-500" href="#">
              Privacy
            </a>
            <a className="text-slate-500 transition-colors duration-300 hover:text-rose-500" href="#">
              Terms
            </a>
            <a className="text-slate-500 transition-colors duration-300 hover:text-rose-500" href="#">
              Support
            </a>
          </div>
        </div>
      </footer>
    </main>
  );
}
