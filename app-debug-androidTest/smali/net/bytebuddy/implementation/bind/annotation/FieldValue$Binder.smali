.class public final enum Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;
.super Ljava/lang/Enum;
.source "FieldValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Binder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
        "Lnet/bytebuddy/implementation/bind/annotation/FieldValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

.field private static final DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final FIELD_NAME:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;


# instance fields
.field private final delegate:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    new-instance v1, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder$Delegate;

    invoke-direct {v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder$Delegate;-><init>()V

    const-string v2, "INSTANCE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    .line 75
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    .line 96
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 97
    .local v0, "methodList":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    const-string v1, "declaringType"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 98
    const-string v1, "value"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->FIELD_NAME:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 99
    .end local v0    # "methodList":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldValue;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p3, "delegate":Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;, "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<Lnet/bytebuddy/implementation/bind/annotation/FieldValue;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->delegate:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    .line 113
    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 75
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->FIELD_NAME:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 75
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;
    .locals 1

    .line 75
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;

    return-object v0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .locals 7
    .param p2, "source"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "target"    # Lnet/bytebuddy/description/method/ParameterDescription;
    .param p4, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .param p5, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p6, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldValue;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;"
        }
    .end annotation

    .line 131
    .local p1, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<Lnet/bytebuddy/implementation/bind/annotation/FieldValue;>;"
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->delegate:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;->bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;

    move-result-object v0

    return-object v0
.end method

.method public getHandledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/implementation/bind/annotation/FieldValue;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldValue$Binder;->delegate:Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;->getHandledType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
