.class Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;
.super Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    .line 1338
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;"
    .local p2, "delegate":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;->this$0:Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;)V

    return-void
.end method


# virtual methods
.method collectTypes(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 1346
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1347
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1348
    .local v2, "type":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;->getRawType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1349
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 1351
    .end local v2    # "type":Ljava/lang/Object;, "TK;"
    :cond_0
    goto :goto_0

    .line 1352
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->collectTypes(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation

    .line 1341
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$3;"
    .local p1, "type":Ljava/lang/Object;, "TK;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
