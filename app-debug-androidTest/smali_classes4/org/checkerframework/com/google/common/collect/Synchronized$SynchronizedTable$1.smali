.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;
.super Ljava/lang/Object;
.source "Synchronized.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->rowMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Ljava/util/Map<",
        "TC;TV;>;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;

    .line 2119
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;->this$0:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2119
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 2122
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;->this$0:Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
