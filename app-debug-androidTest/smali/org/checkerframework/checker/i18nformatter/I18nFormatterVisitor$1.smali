.class synthetic Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;
.super Ljava/lang/Object;
.source "I18nFormatterVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$checkerframework$checker$formatter$FormatterTreeUtil$InvocationType:[I

.field static final synthetic $SwitchMap$org$checkerframework$checker$i18nformatter$I18nFormatterTreeUtil$FormatType:[I

.field static final synthetic $SwitchMap$org$checkerframework$checker$i18nformatter$qual$I18nConversionCategory:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    invoke-static {}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->values()[Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$i18nformatter$I18nFormatterTreeUtil$FormatType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NINVALID:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    invoke-virtual {v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$i18nformatter$I18nFormatterTreeUtil$FormatType:[I

    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMATFOR:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    invoke-virtual {v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$i18nformatter$I18nFormatterTreeUtil$FormatType:[I

    sget-object v4, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMAT:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    invoke-virtual {v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 65
    :goto_2
    invoke-static {}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->values()[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$formatter$FormatterTreeUtil$InvocationType:[I

    :try_start_3
    sget-object v4, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    invoke-virtual {v4}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$formatter$FormatterTreeUtil$InvocationType:[I

    sget-object v4, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->NULLARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    invoke-virtual {v4}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$formatter$FormatterTreeUtil$InvocationType:[I

    sget-object v4, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    invoke-virtual {v4}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    .line 84
    :goto_5
    invoke-static {}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->values()[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$i18nformatter$qual$I18nConversionCategory:[I

    :try_start_6
    sget-object v3, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v3}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$i18nformatter$qual$I18nConversionCategory:[I

    sget-object v2, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v2}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    return-void
.end method
