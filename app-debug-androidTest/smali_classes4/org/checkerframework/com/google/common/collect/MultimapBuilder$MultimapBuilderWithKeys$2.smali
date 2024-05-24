.class Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;
.super Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedListValues()Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 305
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;->this$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;->this$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 309
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$LinkedListSupplier;->instance()Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->newListMultimap(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 305
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$2;->build()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
