.class public abstract enum Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;
.super Ljava/lang/Enum;
.source "FieldAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "TerminationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

.field public static final enum NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

.field public static final enum RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 962
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler$1;

    const-string v1, "RETURNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    .line 975
    new-instance v1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler$2;

    const-string v3, "NON_OPERATIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    .line 957
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 957
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/FieldAccessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/FieldAccessor$1;

    .line 957
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 957
    const-class v0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;
    .locals 1

    .line 957
    sget-object v0, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;

    return-object v0
.end method


# virtual methods
.method protected abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
