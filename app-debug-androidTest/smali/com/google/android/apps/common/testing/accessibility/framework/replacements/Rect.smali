.class public final Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# static fields
.field public static final EMPTY:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->EMPTY:Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    .line 36
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    .line 37
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    .line 38
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 4
    .param p1, "rectProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->getRight()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->getBottom()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    .line 43
    return-void
.end method

.method public static intersects(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Z
    .locals 2
    .param p0, "a"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p1, "b"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 199
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public contains(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Z
    .locals 2
    .param p1, "r"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 147
    return v0

    .line 150
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 155
    .local v2, "r":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    iget v4, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    iget v4, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    iget v4, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    iget v4, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 151
    .end local v2    # "r":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    :cond_3
    :goto_1
    return v1
.end method

.method public final getBottom()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .line 72
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .line 67
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 160
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    .line 161
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    add-int/2addr v1, v2

    .line 162
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    add-int/2addr v0, v2

    .line 163
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 164
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
    .locals 2

    .line 136
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->setLeft(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->setTop(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->setRight(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->setBottom(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 136
    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v2, "]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Rect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public union(IIII)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 120
    if-le p3, p1, :cond_2

    if-gt p4, p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    return-object v0

    .line 127
    :cond_1
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    .line 128
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    .line 129
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    .line 130
    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    .line 131
    invoke-static {p4, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    .line 127
    return-object v0

    .line 121
    :cond_2
    :goto_0
    return-object p0
.end method

.method public union(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 4
    .param p1, "r"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->left:I

    iget v1, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->top:I

    iget v2, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->right:I

    iget v3, p1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->union(IIII)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method
