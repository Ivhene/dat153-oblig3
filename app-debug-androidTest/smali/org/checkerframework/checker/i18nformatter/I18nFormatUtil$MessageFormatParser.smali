.class Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;
.super Ljava/lang/Object;
.source "I18nFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageFormatParser"
.end annotation


# static fields
.field private static final DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_DEFAULT:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final SEG_INDEX:I = 0x1

.field private static final SEG_MODIFIER:I = 0x3

.field private static final SEG_RAW:I = 0x0

.field private static final SEG_TYPE:I = 0x2

.field private static final TYPE_CHOICE:I = 0x4

.field private static final TYPE_DATE:I = 0x2

.field private static final TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_TIME:I = 0x3

.field private static argumentIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static locale:Ljava/util/Locale;

.field public static maxOffset:I

.field private static numFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 148
    const-string v0, "time"

    const-string v1, "choice"

    const-string v2, ""

    const-string v3, "number"

    const-string v4, "date"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->TYPE_KEYWORDS:[Ljava/lang/String;

    .line 156
    const-string v0, "percent"

    const-string v1, "integer"

    const-string v3, "currency"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 160
    const-string v0, "long"

    const-string v1, "full"

    const-string v3, "short"

    const-string v4, "medium"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPattern(Ljava/lang/String;)V
    .locals 12
    .param p0, "pattern"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/StringBuilder;

    .line 181
    .local v0, "segments":[Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "part":I
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, "inQuote":Z
    const/4 v4, 0x0

    .line 187
    .local v4, "braceStack":I
    const/4 v5, -0x1

    sput v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 188
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 189
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 190
    .local v7, "ch":C
    const/16 v8, 0x27

    const/4 v9, 0x1

    if-nez v1, :cond_4

    .line 191
    if-ne v7, v8, :cond_2

    .line 192
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_0

    .line 193
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 196
    :cond_0
    if-nez v3, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    move v3, v8

    goto/16 :goto_2

    .line 198
    :cond_2
    const/16 v8, 0x7b

    if-ne v7, v8, :cond_3

    if-nez v3, :cond_3

    .line 199
    const/4 v1, 0x1

    .line 200
    aget-object v8, v0, v9

    if-nez v8, :cond_9

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v8, v0, v9

    goto/16 :goto_2

    .line 204
    :cond_3
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 207
    :cond_4
    if-eqz v3, :cond_5

    .line 208
    aget-object v10, v0, v1

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    if-ne v7, v8, :cond_9

    .line 210
    const/4 v3, 0x0

    goto :goto_2

    .line 213
    :cond_5
    const/4 v8, 0x3

    const/4 v10, 0x2

    sparse-switch v7, :sswitch_data_0

    .line 252
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 228
    :sswitch_0
    if-nez v4, :cond_6

    .line 229
    const/4 v1, 0x0

    .line 230
    sget v11, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    invoke-static {v11, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->makeFormat(I[Ljava/lang/StringBuilder;)V

    .line 231
    sget v11, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    add-int/2addr v11, v9

    sput v11, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    .line 233
    const/4 v11, 0x0

    aput-object v11, v0, v9

    .line 234
    aput-object v11, v0, v10

    .line 235
    aput-object v11, v0, v8

    goto :goto_2

    .line 237
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 238
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_2

    .line 224
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 225
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    goto :goto_2

    .line 215
    :sswitch_2
    if-ge v1, v8, :cond_7

    .line 216
    add-int/lit8 v1, v1, 0x1

    aget-object v8, v0, v1

    if-nez v8, :cond_9

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v8, v0, v1

    goto :goto_2

    .line 220
    :cond_7
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    goto :goto_2

    .line 248
    :sswitch_3
    const/4 v3, 0x1

    .line 249
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    goto :goto_2

    .line 243
    :sswitch_4
    if-ne v1, v10, :cond_8

    aget-object v8, v0, v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 244
    :cond_8
    aget-object v8, v0, v1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    .end local v7    # "ch":C
    :cond_9
    :goto_2
    add-int/2addr v6, v9

    goto/16 :goto_0

    .line 258
    .end local v6    # "i":I
    :cond_a
    if-nez v4, :cond_c

    if-nez v1, :cond_b

    goto :goto_3

    .line 259
    :cond_b
    sput v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 260
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unmatched braces in the pattern"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_c
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_4
        0x27 -> :sswitch_3
        0x2c -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 369
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    return v0

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "ls":Ljava/lang/String;
    if-eq v0, p0, :cond_3

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 378
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    return v1

    .line 377
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    .end local v1    # "i":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private static makeFormat(I[Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "offsetNumber"    # I
    .param p1, "textSegments"    # [Ljava/lang/StringBuilder;

    .line 266
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 267
    .local v0, "segments":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 268
    aget-object v2, p1, v1

    .line 269
    .local v2, "oneseg":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    aput-object v3, v0, v1

    .line 267
    .end local v2    # "oneseg":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 280
    .local v1, "argumentNumber":I
    nop

    .line 281
    if-ltz v1, :cond_5

    .line 285
    sget v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 286
    .local v2, "oldMaxOffset":I
    sput p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 287
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "category":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 292
    aget-object v5, v0, v4

    sget-object v6, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 293
    .local v5, "type":I
    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_0

    .line 353
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 354
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown format type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v4, v0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :pswitch_0
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    :try_start_1
    new-instance v4, Ljava/text/ChoiceFormat;

    aget-object v7, v0, v6

    invoke-direct {v4, v7}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    nop

    .line 350
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 351
    goto/16 :goto_5

    .line 344
    :catch_0
    move-exception v4

    .line 345
    .local v4, "e":Ljava/lang/Exception;
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 347
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choice Pattern incorrect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v6, v0, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 337
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Choice Pattern requires Subformat Pattern: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v6, v0, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :pswitch_1
    aget-object v4, v0, v6

    sget-object v7, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 321
    .local v4, "mod":I
    if-ltz v4, :cond_3

    array-length v7, v7

    if-ge v4, v7, :cond_3

    goto :goto_2

    .line 326
    :cond_3
    :try_start_2
    new-instance v7, Ljava/text/SimpleDateFormat;

    aget-object v6, v0, v6

    sget-object v8, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 331
    nop

    .line 333
    :goto_2
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 334
    goto :goto_5

    .line 327
    :catch_1
    move-exception v6

    .line 328
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 330
    throw v6

    .line 298
    .end local v4    # "mod":I
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_2
    aget-object v4, v0, v6

    sget-object v7, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 306
    :try_start_3
    new-instance v4, Ljava/text/DecimalFormat;

    goto :goto_3

    .line 303
    :pswitch_3
    goto :goto_4

    .line 306
    :goto_3
    aget-object v6, v0, v6

    sget-object v7, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    .line 308
    invoke-static {v7}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 313
    nop

    .line 316
    :goto_4
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 317
    goto :goto_5

    .line 309
    :catch_2
    move-exception v4

    .line 310
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sput v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->maxOffset:I

    .line 312
    throw v4

    .line 295
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_4
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 296
    nop

    .line 357
    .end local v5    # "type":I
    :goto_5
    goto :goto_6

    .line 358
    :cond_4
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 360
    :goto_6
    sget-object v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-void

    .line 282
    .end local v2    # "oldMaxOffset":I
    .end local v3    # "category":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "negative argument number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    .end local v1    # "argumentNumber":I
    :catch_3
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t parse argument number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    .line 167
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->locale:Ljava/util/Locale;

    .line 168
    invoke-static {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->applyPattern(Ljava/lang/String;)V

    .line 170
    sget v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    new-array v0, v0, [Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    .line 171
    .local v0, "ret":[Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->numFormat:I

    if-ge v1, v2, :cond_0

    .line 172
    new-instance v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->argumentIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$MessageFormatParser;->categories:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatUtil$I18nConversion;-><init>(ILorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)V

    aput-object v2, v0, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
