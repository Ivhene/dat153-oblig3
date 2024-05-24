.class public final synthetic Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor$OnConstruction;


# instance fields
.field public final synthetic f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->lambda$newInstance$4$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
