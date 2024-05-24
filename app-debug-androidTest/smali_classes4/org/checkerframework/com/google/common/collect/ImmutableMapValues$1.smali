.class Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final entryItr:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 51
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;->access$000(Lorg/checkerframework/com/google/common/collect/ImmutableMapValues;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;->entryItr:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 55
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;->entryItr:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapValues$1;->entryItr:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
