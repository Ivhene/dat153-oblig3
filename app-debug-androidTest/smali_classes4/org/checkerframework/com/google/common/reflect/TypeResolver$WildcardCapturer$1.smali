.class Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer$1;
.super Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

.field final synthetic val$typeParam:Ljava/lang/reflect/TypeVariable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;
    .param p2, "id"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 507
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer$1;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer$1;->val$typeParam:Ljava/lang/reflect/TypeVariable;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/checkerframework/com/google/common/reflect/TypeResolver$1;)V

    return-void
.end method


# virtual methods
.method captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 3
    .param p1, "upperBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 517
    .local v0, "combined":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Type;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer$1;->val$typeParam:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 518
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 519
    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    invoke-super {p0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeResolver$WildcardCapturer;->captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    return-object v1
.end method
