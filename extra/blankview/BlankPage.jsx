import React from 'react';

import { Blank } from '../components/Blank';
import AuthenticatedLayout from '@/apps/restaurant/layouts/AuthenticatedLayout';

Blank.layout = (page) => <AuthenticatedLayout>{page}</AuthenticatedLayout>;

export default Blank;
