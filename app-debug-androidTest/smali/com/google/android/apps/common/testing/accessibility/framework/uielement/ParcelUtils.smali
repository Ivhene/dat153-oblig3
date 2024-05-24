.class final Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final ABSENT:I = 0x0

.field private static final PRESENT:I = 0x1

.field private static final SPAN_TYPE_CLICKABLE:I = 0x1

.field private static final SPAN_TYPE_STYLE:I = 0x3

.field private static final SPAN_TYPE_UNDERLINE:I = 0x4

.field private static final SPAN_TYPE_UNKNOWN:I = 0x0

.field private static final SPAN_TYPE_URL:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readNullableBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 192
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 193
    .local v0, "byteValue":B
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v1, 0x0

    return-object v1

    .line 195
    :cond_0
    if-nez v0, :cond_1

    .line 196
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 197
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 198
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 200
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parcel contained unexpected Boolean byte."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readNullableFloat(Landroid/os/Parcel;)Ljava/lang/Float;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "marker":I
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    return-object v1

    .line 126
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parcel contained unexpected marker value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readNullableInteger(Landroid/os/Parcel;)Ljava/lang/Integer;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "marker":I
    if-nez v0, :cond_0

    .line 57
    const/4 v1, 0x0

    return-object v1

    .line 58
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parcel contained unexpected marker value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readNullableLong(Landroid/os/Parcel;)Ljava/lang/Long;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, "marker":I
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parcel contained unexpected marker value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readNullableString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .local v0, "marker":I
    if-nez v0, :cond_0

    .line 159
    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parcel contained unexpected marker value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readRectFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 271
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 273
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 279
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;-><init>(IIII)V

    .line 271
    return-object v0
.end method

.method public static readRectList(Landroid/os/Parcel;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 303
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 304
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 305
    .local v1, "rects":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 306
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readRectFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2

    .line 310
    .end local v1    # "rects":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static readSpannableStringFromParcel(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .locals 16
    .param p0, "in"    # Landroid/os/Parcel;

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, "rawString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .local v1, "spanSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .local v2, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 236
    .local v4, "spanClassName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 237
    .local v11, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 238
    .local v12, "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 239
    .local v13, "flags":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 240
    .local v14, "spanType":I
    packed-switch v14, :pswitch_data_0

    goto :goto_1

    .line 254
    :pswitch_0
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;

    invoke-direct {v5, v4, v11, v12, v13}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    goto :goto_1

    .line 251
    :pswitch_1
    new-instance v15, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v5, v15

    move-object v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    goto :goto_1

    .line 248
    :pswitch_2
    new-instance v15, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v15

    move-object v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    goto :goto_1

    .line 245
    :pswitch_3
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;

    invoke-direct {v5, v4, v11, v12, v13}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    goto :goto_1

    .line 242
    :pswitch_4
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    invoke-direct {v5, v4, v11, v12, v13}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    nop

    .line 234
    .end local v4    # "spanClassName":Ljava/lang/String;
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "flags":I
    .end local v14    # "spanType":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;

    invoke-direct {v3, v0, v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeNullableBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "val"    # Ljava/lang/Boolean;

    .line 177
    if-nez p1, :cond_0

    .line 178
    const/4 v0, -0x1

    .local v0, "byteValue":B
    goto :goto_0

    .line 180
    .end local v0    # "byteValue":B
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 182
    .restart local v0    # "byteValue":B
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    return-void
.end method

.method public static writeNullableFloat(Landroid/os/Parcel;Ljava/lang/Float;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "val"    # Ljava/lang/Float;

    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 111
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 114
    :goto_0
    return-void
.end method

.method public static writeNullableInteger(Landroid/os/Parcel;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "val"    # Ljava/lang/Integer;

    .line 40
    if-nez p1, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    :goto_0
    return-void
.end method

.method public static writeNullableLong(Landroid/os/Parcel;Ljava/lang/Long;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "val"    # Ljava/lang/Long;

    .line 74
    if-nez p1, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    :goto_0
    return-void
.end method

.method public static writeNullableString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "val"    # Ljava/lang/String;

    .line 142
    if-nez p1, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 145
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void
.end method

.method public static writeRectList(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;

    .line 291
    .local v1, "rect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    invoke-static {v1, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeRectToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Landroid/os/Parcel;)V

    .line 292
    .end local v1    # "rect":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public static writeRectToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "rect"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getTop()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getRight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Rect;->getBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return-void
.end method

.method public static writeSpannableStringToParcel(Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;Landroid/os/Parcel;)V
    .locals 4
    .param p0, "spannableString"    # Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->getSpans()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;

    .line 209
    .local v2, "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getSpanClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getStart()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getEnd()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;->getFlags()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    instance-of v3, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    if-eqz v3, :cond_0

    .line 215
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    move-object v3, v2

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$URLSpan;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :cond_0
    instance-of v3, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$ClickableSpan;

    if-eqz v3, :cond_1

    .line 218
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 219
    :cond_1
    instance-of v3, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;

    if-eqz v3, :cond_2

    .line 220
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    move-object v3, v2

    check-cast v3, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;

    invoke-virtual {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$StyleSpan;->getStyle()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 222
    :cond_2
    instance-of v3, v2, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Spans$UnderlineSpan;

    if-eqz v3, :cond_3

    .line 223
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 225
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    .end local v2    # "span":Lcom/google/android/apps/common/testing/accessibility/framework/replacements/Span;
    :goto_1
    goto :goto_0

    .line 228
    :cond_4
    return-void
.end method
