.class final enum Lorg/checkerframework/framework/source/Result$Type;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/source/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/source/Result$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/source/Result$Type;

.field public static final enum FAILURE:Lorg/checkerframework/framework/source/Result$Type;

.field public static final enum SUCCESS:Lorg/checkerframework/framework/source/Result$Type;

.field public static final enum WARNING:Lorg/checkerframework/framework/source/Result$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lorg/checkerframework/framework/source/Result$Type;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/source/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/source/Result$Type;->SUCCESS:Lorg/checkerframework/framework/source/Result$Type;

    .line 26
    new-instance v1, Lorg/checkerframework/framework/source/Result$Type;

    const-string v2, "FAILURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/source/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/source/Result$Type;->FAILURE:Lorg/checkerframework/framework/source/Result$Type;

    .line 27
    new-instance v2, Lorg/checkerframework/framework/source/Result$Type;

    const-string v3, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/framework/source/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/source/Result$Type;->WARNING:Lorg/checkerframework/framework/source/Result$Type;

    .line 24
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/framework/source/Result$Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/source/Result$Type;->$VALUES:[Lorg/checkerframework/framework/source/Result$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final merge(Lorg/checkerframework/framework/source/Result$Type;Lorg/checkerframework/framework/source/Result$Type;)Lorg/checkerframework/framework/source/Result$Type;
    .locals 1
    .param p0, "a"    # Lorg/checkerframework/framework/source/Result$Type;
    .param p1, "b"    # Lorg/checkerframework/framework/source/Result$Type;

    .line 31
    sget-object v0, Lorg/checkerframework/framework/source/Result$Type;->FAILURE:Lorg/checkerframework/framework/source/Result$Type;

    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    sget-object v0, Lorg/checkerframework/framework/source/Result$Type;->WARNING:Lorg/checkerframework/framework/source/Result$Type;

    if-eq p0, v0, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lorg/checkerframework/framework/source/Result$Type;->SUCCESS:Lorg/checkerframework/framework/source/Result$Type;

    return-object v0

    .line 34
    :cond_2
    :goto_0
    return-object v0

    .line 32
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/source/Result$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lorg/checkerframework/framework/source/Result$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/source/Result$Type;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/source/Result$Type;
    .locals 1

    .line 24
    sget-object v0, Lorg/checkerframework/framework/source/Result$Type;->$VALUES:[Lorg/checkerframework/framework/source/Result$Type;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/source/Result$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/source/Result$Type;

    return-object v0
.end method
