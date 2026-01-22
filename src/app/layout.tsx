import "./globals.css";

export const metadata = {
  title: "Decision App",
  description: "Decision tracking UI"
};

export default function RootLayout({
  children
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
