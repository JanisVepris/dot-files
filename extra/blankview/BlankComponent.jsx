import React, { useEffect, useState } from 'react';

import { Inertia } from '@inertiajs/inertia';

import { useHeadTitle } from '@/apps/foundations/components/HeadTitle';
export function Blank({
  order,
}) {
  useHeadTitle('Blank');

  return (
    <main className="font-sans text-sm text-body">
      <h1>Blank page</h1>
    </main>
  );
}
