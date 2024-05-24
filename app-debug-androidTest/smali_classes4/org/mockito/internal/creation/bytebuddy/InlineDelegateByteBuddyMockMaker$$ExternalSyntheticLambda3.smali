.class public final synthetic Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

.field public final synthetic f$1:Ljava/lang/ThreadLocal;

.field public final synthetic f$2:Ljava/lang/ThreadLocal;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;->f$1:Ljava/lang/ThreadLocal;

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;->f$2:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;->f$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;->f$1:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$$ExternalSyntheticLambda3;->f$2:Ljava/lang/ThreadLocal;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->lambda$new$2$org-mockito-internal-creation-bytebuddy-InlineDelegateByteBuddyMockMaker(Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
