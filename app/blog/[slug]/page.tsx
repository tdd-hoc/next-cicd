type Params = {
  params: {
    slug: string;
  };
};

// 🧩 Thêm đoạn này để Next.js biết build các slug nào
export async function generateStaticParams() {
  // ⚙️ Tạm thời fix cứng vài giá trị slug để export tĩnh
  return [
    { slug: "hello-world" },
    { slug: "nextjs-16" },
    { slug: "thachdateduy" },
  ];
}

export async function generateMetadata({ params }: Params) {
  return { title: `Post: ${params.slug}` };
}

export default function Page({ params }: Params) {
  return (
    <>
      <h1>Slug: {params.slug}</h1>
      <p>thachdateduy</p>
      <p>socruong</p>
    </>
  );
}
