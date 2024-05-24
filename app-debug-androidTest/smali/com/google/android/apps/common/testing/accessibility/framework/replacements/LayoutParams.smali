.class public final Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;
.super Ljava/lang/Object;
.source "LayoutParams.java"


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->width:I

    .line 23
    iput p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->height:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V
    .locals 2
    .param p1, "layoutParamsProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;-><init>(II)V

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 47
    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;

    .line 52
    .local v1, "params":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;
    iget v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->width:I

    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->width:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->height:I

    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->height:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 54
    .end local v1    # "params":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;
    :cond_2
    return v2
.end method

.method public getHeight()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;
    .locals 2

    .line 41
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->width:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->setWidth(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->height:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->setHeight(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 64
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->width:I

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/LayoutParams;->height:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "LayoutParams("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
