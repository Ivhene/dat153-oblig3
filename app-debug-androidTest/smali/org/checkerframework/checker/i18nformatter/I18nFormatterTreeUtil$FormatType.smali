.class public final enum Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
.super Ljava/lang/Enum;
.source "I18nFormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

.field public static final enum I18NFORMAT:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

.field public static final enum I18NFORMATFOR:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

.field public static final enum I18NINVALID:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    const-string v1, "I18NINVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NINVALID:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    .line 69
    new-instance v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    const-string v2, "I18NFORMAT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMAT:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    .line 70
    new-instance v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    const-string v3, "I18NFORMATFOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->I18NFORMATFOR:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    .line 67
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->$VALUES:[Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-class v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;
    .locals 1

    .line 67
    sget-object v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->$VALUES:[Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    return-object v0
.end method
