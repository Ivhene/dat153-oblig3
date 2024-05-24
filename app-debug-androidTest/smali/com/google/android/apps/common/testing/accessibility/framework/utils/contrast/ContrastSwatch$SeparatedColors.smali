.class Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;
.super Ljava/lang/Object;
.source "ContrastSwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparatedColors"
.end annotation


# instance fields
.field private final backgroundColor:I

.field private final foregroundColors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "singleColor"    # I

    .line 303
    invoke-direct {p0, p1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(II)V

    .line 304
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "foregroundColor"    # I

    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;-><init>(ILjava/util/List;)V

    .line 309
    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "backgroundColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p2, "foregroundColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->backgroundColor:I

    .line 314
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->foregroundColors:Lcom/google/common/collect/ImmutableList;

    .line 315
    return-void
.end method


# virtual methods
.method getBackgroundColor()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->backgroundColor:I

    return v0
.end method

.method getForegroundColors()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/ContrastSwatch$SeparatedColors;->foregroundColors:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
