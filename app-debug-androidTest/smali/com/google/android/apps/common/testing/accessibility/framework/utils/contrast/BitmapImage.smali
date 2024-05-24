.class public final Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;
.super Ljava/lang/Object;
.source "BitmapImage.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final height:I

.field private final left:I

.field private final top:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 19
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    .line 24
    iput p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->left:I

    .line 25
    iput p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->top:I

    .line 26
    iput p4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->width:I

    .line 27
    iput p5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->height:I

    .line 28
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "left must be >= 0"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 43
    if-ltz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "top must be >= 0"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    if-lez p3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    const-string v3, "width must be > 0"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 45
    if-lez p4, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    const-string v3, "height must be > 0"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    add-int v2, p1, p3

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->width:I

    if-gt v2, v3, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    add-int v2, p2, p4

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->height:I

    if-gt v2, v3, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 48
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->left:I

    add-int v3, v1, p1

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->top:I

    add-int v4, v1, p2

    move-object v1, v0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;-><init>(Landroid/graphics/Bitmap;IIII)V

    return-object v0
.end method

.method public bridge synthetic crop(IIII)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Image;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->crop(IIII)Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->left:I

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->top:I

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->width:I

    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->height:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->height:I

    return v0
.end method

.method public getPixels()[I
    .locals 9

    .line 53
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->width:I

    iget v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->height:I

    mul-int v0, v6, v7

    new-array v8, v0, [I

    .line 54
    .local v8, "pixels":[I
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->left:I

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->top:I

    move-object v1, v8

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 56
    return-object v8
.end method

.method public getWidth()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 66
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->left:I

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/BitmapImage;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 66
    const-string v1, "{BitmapImage left=%d top=%d width=%d height=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
