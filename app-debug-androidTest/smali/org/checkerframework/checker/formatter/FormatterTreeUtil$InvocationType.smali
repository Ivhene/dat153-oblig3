.class public final enum Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
.super Ljava/lang/Enum;
.source "FormatterTreeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InvocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

.field public static final enum ARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

.field public static final enum NULLARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

.field public static final enum VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 77
    new-instance v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    const-string v1, "VARARG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->VARARG:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 91
    new-instance v1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    const-string v2, "ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 104
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    const-string v3, "NULLARRAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->NULLARRAY:Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    .line 65
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->$VALUES:[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 65
    const-class v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;
    .locals 1

    .line 65
    sget-object v0, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->$VALUES:[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    return-object v0
.end method
