.class Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;
.super Ljava/lang/Object;
.source "InlineDelegateByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/plugins/MockMaker$TypeMockability;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    .line 522
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;->this$0:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mockable()Z
    .locals 2

    .line 525
    invoke-static {}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->access$000()Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/lang/instrument/Instrumentation;->isModifiableClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nonMockableReason()Ljava/lang/String;
    .locals 2

    .line 530
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;->mockable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, ""

    return-object v0

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    const-string v0, "primitive type"

    return-object v0

    .line 536
    :cond_1
    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;->EXCLUDES:Ljava/util/Set;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;->val$type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    const-string v0, "Cannot mock wrapper types, String.class or Class.class"

    return-object v0

    .line 539
    :cond_2
    const-string v0, "VM does not support modification of given type"

    return-object v0
.end method
