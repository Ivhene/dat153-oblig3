.class public final synthetic Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;

    check-cast p2, Lorg/mockito/MockedConstruction$Context;

    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl;->lambda$enable$0$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker$InlineConstructionMockControl(Ljava/lang/Object;Lorg/mockito/MockedConstruction$Context;)V

    return-void
.end method
