.class public final enum Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
.super Ljava/lang/Enum;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

.field public static final enum errorIfNoSemiColon:Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

.field public static final enum semiColonOptional:Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

.field public static final enum semiColonRequired:Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    const-string v1, "semiColonRequired"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    const-string v2, "semiColonOptional"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonOptional:Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    new-instance v2, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    const-string v3, "errorIfNoSemiColon"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
    .locals 1

    .line 38
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    return-object v0
.end method
