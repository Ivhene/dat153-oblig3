.class public final enum Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;
.super Ljava/lang/Enum;
.source "InstrumentedType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 370
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    .line 365
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 365
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;
    .locals 1

    .line 365
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    return-object v0
.end method


# virtual methods
.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 376
    return-object p1
.end method
