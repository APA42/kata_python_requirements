# -*- coding: utf-8 -*-

from mamba import description, context, it, before
from expects import expect, be_true


with description('An Spec Example') as self:
    with before.each:
        pass

    with context('when foo'):
        with it('bar'):
            expect(True).to(be_true)
