.class Lorg/checkerframework/com/google/common/base/Optional$1$1;
.super Lorg/checkerframework/com/google/common/base/AbstractIterator;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/base/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/base/Optional$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Optional$1;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/base/Optional$1;

    .line 337
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Optional$1$1;->this$0:Lorg/checkerframework/com/google/common/base/Optional$1;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/AbstractIterator;-><init>()V

    .line 338
    iget-object v0, p1, Lorg/checkerframework/com/google/common/base/Optional$1;->val$optionals:Ljava/lang/Iterable;

    .line 339
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    .line 338
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 343
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Optional;

    .line 345
    .local v0, "optional":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<+TT;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 348
    .end local v0    # "optional":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<+TT;>;"
    :cond_0
    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/base/Optional$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
