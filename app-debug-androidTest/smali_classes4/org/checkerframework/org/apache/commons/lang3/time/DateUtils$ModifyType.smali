.class final enum Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;
.super Ljava/lang/Enum;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum CEILING:Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum ROUND:Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum TRUNCATE:Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 127
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v1, "TRUNCATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 132
    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v2, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 137
    new-instance v2, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v3, "CEILING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 123
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    const-class v0, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;
    .locals 1

    .line 123
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-virtual {v0}, [Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object v0
.end method
