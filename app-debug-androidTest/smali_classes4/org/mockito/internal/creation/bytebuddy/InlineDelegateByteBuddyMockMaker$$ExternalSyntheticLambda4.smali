.class public final synthetic Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ConstructionCallback;


# instance fields
.field public final synthetic f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

.field public final synthetic f$1:Ljava/lang/ThreadLocal;

.field public final synthetic f$2:Ljava/lang/ThreadLocal;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;->f$1:Ljava/lang/ThreadLocal;

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;->f$2:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;->f$1:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda4;->f$2:Ljava/lang/ThreadLocal;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->lambda$new$3$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker(Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
