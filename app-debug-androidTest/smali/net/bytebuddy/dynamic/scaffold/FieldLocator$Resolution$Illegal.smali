.class public final enum Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;
.super Ljava/lang/Enum;
.source "FieldLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    .line 72
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 72
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;
    .locals 1

    .line 72
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution$Illegal;

    return-object v0
.end method


# virtual methods
.method public getField()Lnet/bytebuddy/description/field/FieldDescription;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not locate field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isResolved()Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method
