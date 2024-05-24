.class public final enum Lscenelib/type/BoundedType$BoundKind;
.super Ljava/lang/Enum;
.source "BoundedType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/type/BoundedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lscenelib/type/BoundedType$BoundKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lscenelib/type/BoundedType$BoundKind;

.field public static final enum EXTENDS:Lscenelib/type/BoundedType$BoundKind;

.field public static final enum SUPER:Lscenelib/type/BoundedType$BoundKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lscenelib/type/BoundedType$BoundKind;

    const-string v1, "EXTENDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lscenelib/type/BoundedType$BoundKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lscenelib/type/BoundedType$BoundKind;->EXTENDS:Lscenelib/type/BoundedType$BoundKind;

    .line 24
    new-instance v1, Lscenelib/type/BoundedType$BoundKind;

    const-string v2, "SUPER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lscenelib/type/BoundedType$BoundKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lscenelib/type/BoundedType$BoundKind;->SUPER:Lscenelib/type/BoundedType$BoundKind;

    .line 22
    filled-new-array {v0, v1}, [Lscenelib/type/BoundedType$BoundKind;

    move-result-object v0

    sput-object v0, Lscenelib/type/BoundedType$BoundKind;->$VALUES:[Lscenelib/type/BoundedType$BoundKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lscenelib/type/BoundedType$BoundKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lscenelib/type/BoundedType$BoundKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lscenelib/type/BoundedType$BoundKind;

    return-object v0
.end method

.method public static values()[Lscenelib/type/BoundedType$BoundKind;
    .locals 1

    .line 22
    sget-object v0, Lscenelib/type/BoundedType$BoundKind;->$VALUES:[Lscenelib/type/BoundedType$BoundKind;

    invoke-virtual {v0}, [Lscenelib/type/BoundedType$BoundKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscenelib/type/BoundedType$BoundKind;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
