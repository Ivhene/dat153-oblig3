.class public final enum Lannotator/find/Insertion$Kind;
.super Ljava/lang/Enum;
.source "Insertion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lannotator/find/Insertion$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lannotator/find/Insertion$Kind;

.field public static final enum ANNOTATION:Lannotator/find/Insertion$Kind;

.field public static final enum CAST:Lannotator/find/Insertion$Kind;

.field public static final enum CLOSE_PARENTHESIS:Lannotator/find/Insertion$Kind;

.field public static final enum CONSTRUCTOR:Lannotator/find/Insertion$Kind;

.field public static final enum METHOD:Lannotator/find/Insertion$Kind;

.field public static final enum NEW:Lannotator/find/Insertion$Kind;

.field public static final enum RECEIVER:Lannotator/find/Insertion$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lannotator/find/Insertion$Kind;

    const-string v1, "ANNOTATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lannotator/find/Insertion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    .line 27
    new-instance v1, Lannotator/find/Insertion$Kind;

    const-string v2, "CAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lannotator/find/Insertion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lannotator/find/Insertion$Kind;->CAST:Lannotator/find/Insertion$Kind;

    .line 28
    new-instance v2, Lannotator/find/Insertion$Kind;

    const-string v3, "CONSTRUCTOR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lannotator/find/Insertion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    .line 29
    new-instance v3, Lannotator/find/Insertion$Kind;

    const-string v4, "METHOD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lannotator/find/Insertion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lannotator/find/Insertion$Kind;->METHOD:Lannotator/find/Insertion$Kind;

    .line 30
    new-instance v4, Lannotator/find/Insertion$Kind;

    const-string v5, "NEW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lannotator/find/Insertion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lannotator/find/Insertion$Kind;->NEW:Lannotator/find/Insertion$Kind;

    .line 31
    new-instance v5, Lannotator/find/Insertion$Kind;

    const-string v6, "RECEIVER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lannotator/find/Insertion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lannotator/find/Insertion$Kind;->RECEIVER:Lannotator/find/Insertion$Kind;

    .line 32
    new-instance v6, Lannotator/find/Insertion$Kind;

    const-string v7, "CLOSE_PARENTHESIS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lannotator/find/Insertion$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lannotator/find/Insertion$Kind;->CLOSE_PARENTHESIS:Lannotator/find/Insertion$Kind;

    .line 25
    filled-new-array/range {v0 .. v6}, [Lannotator/find/Insertion$Kind;

    move-result-object v0

    sput-object v0, Lannotator/find/Insertion$Kind;->$VALUES:[Lannotator/find/Insertion$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lannotator/find/Insertion$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lannotator/find/Insertion$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lannotator/find/Insertion$Kind;

    return-object v0
.end method

.method public static values()[Lannotator/find/Insertion$Kind;
    .locals 1

    .line 25
    sget-object v0, Lannotator/find/Insertion$Kind;->$VALUES:[Lannotator/find/Insertion$Kind;

    invoke-virtual {v0}, [Lannotator/find/Insertion$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lannotator/find/Insertion$Kind;

    return-object v0
.end method
