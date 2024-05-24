.class public final enum Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;
.super Ljava/lang/Enum;
.source "RecordComponentRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    .line 68
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;
    .locals 1

    .line 68
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled$NoOp;

    return-object v0
.end method


# virtual methods
.method public target(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;
    .locals 1
    .param p1, "recordComponentDescription"    # Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 79
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;-><init>(Lnet/bytebuddy/description/type/RecordComponentDescription;)V

    return-object v0
.end method
