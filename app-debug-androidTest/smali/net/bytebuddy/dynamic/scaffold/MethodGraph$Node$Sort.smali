.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
.super Ljava/lang/Enum;
.source "MethodGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum AMBIGUOUS:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum RESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum UNRESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

.field public static final enum VISIBLE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;


# instance fields
.field private final madeVisible:Z

.field private final resolved:Z

.field private final unique:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 237
    new-instance v6, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v6, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->VISIBLE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 242
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v8, "RESOLVED"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->RESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 247
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v14, "AMBIGUOUS"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->AMBIGUOUS:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 252
    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    const-string v8, "UNRESOLVED"

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->UNRESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    .line 232
    filled-new-array {v6, v0, v1, v2}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .param p3, "resolved"    # Z
    .param p4, "unique"    # Z
    .param p5, "madeVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 277
    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->resolved:Z

    .line 278
    iput-boolean p4, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->unique:Z

    .line 279
    iput-boolean p5, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->madeVisible:Z

    .line 280
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 232
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
    .locals 1

    .line 232
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-object v0
.end method


# virtual methods
.method public isMadeVisible()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->madeVisible:Z

    return v0
.end method

.method public isResolved()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->resolved:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->unique:Z

    return v0
.end method
