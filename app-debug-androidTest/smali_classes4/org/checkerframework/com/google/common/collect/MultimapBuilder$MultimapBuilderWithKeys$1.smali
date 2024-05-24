.class Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;
.super Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;
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

.field final synthetic val$expectedValuesPerKey:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 293
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput p2, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 297
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ArrayListSupplier;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 296
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->newListMultimap(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 293
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->build()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
