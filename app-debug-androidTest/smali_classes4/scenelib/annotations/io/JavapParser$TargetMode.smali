.class final enum Lscenelib/annotations/io/JavapParser$TargetMode;
.super Ljava/lang/Enum;
.source "JavapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/JavapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TargetMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lscenelib/annotations/io/JavapParser$TargetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lscenelib/annotations/io/JavapParser$TargetMode;

.field public static final enum EXTENDED:Lscenelib/annotations/io/JavapParser$TargetMode;

.field public static final enum ORIGINAL:Lscenelib/annotations/io/JavapParser$TargetMode;

.field public static final enum PARAMETER:Lscenelib/annotations/io/JavapParser$TargetMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    new-instance v0, Lscenelib/annotations/io/JavapParser$TargetMode;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/io/JavapParser$TargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lscenelib/annotations/io/JavapParser$TargetMode;->ORIGINAL:Lscenelib/annotations/io/JavapParser$TargetMode;

    new-instance v1, Lscenelib/annotations/io/JavapParser$TargetMode;

    const-string v2, "PARAMETER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lscenelib/annotations/io/JavapParser$TargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lscenelib/annotations/io/JavapParser$TargetMode;->PARAMETER:Lscenelib/annotations/io/JavapParser$TargetMode;

    new-instance v2, Lscenelib/annotations/io/JavapParser$TargetMode;

    const-string v3, "EXTENDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lscenelib/annotations/io/JavapParser$TargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lscenelib/annotations/io/JavapParser$TargetMode;->EXTENDED:Lscenelib/annotations/io/JavapParser$TargetMode;

    .line 73
    filled-new-array {v0, v1, v2}, [Lscenelib/annotations/io/JavapParser$TargetMode;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/JavapParser$TargetMode;->$VALUES:[Lscenelib/annotations/io/JavapParser$TargetMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lscenelib/annotations/io/JavapParser$TargetMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lscenelib/annotations/io/JavapParser$TargetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/JavapParser$TargetMode;

    return-object v0
.end method

.method public static values()[Lscenelib/annotations/io/JavapParser$TargetMode;
    .locals 1

    .line 73
    sget-object v0, Lscenelib/annotations/io/JavapParser$TargetMode;->$VALUES:[Lscenelib/annotations/io/JavapParser$TargetMode;

    invoke-virtual {v0}, [Lscenelib/annotations/io/JavapParser$TargetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscenelib/annotations/io/JavapParser$TargetMode;

    return-object v0
.end method
