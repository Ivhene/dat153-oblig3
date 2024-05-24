.class final enum Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LongFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;",
        ">;",
        "Lorg/checkerframework/com/google/common/hash/Funnel<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

.field public static final enum INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 215
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;->INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    .line 214
    filled-new-array {v0}, [Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 214
    const-class v0, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;
    .locals 1

    .line 214
    sget-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/Long;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/Long;
    .param p2, "into"    # Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/checkerframework/com/google/common/hash/PrimitiveSink;->putLong(J)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 220
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 214
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Funnels$LongFunnel;->funnel(Ljava/lang/Long;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 224
    const-string v0, "Funnels.longFunnel()"

    return-object v0
.end method
