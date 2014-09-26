.class Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mFloatAnimatedValue:F

.field mFloatKeyframeSet:Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

.field private mFloatProperty:Lcom/baidu/launcher/ui/animation/FloatProperty;

.field mJniSetter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 871
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;)V
    .locals 1
    .parameter "property"
    .parameter "keyframeSet"

    .prologue
    .line 887
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 888
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 889
    iput-object p2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 890
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v0, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    .line 891
    instance-of v0, p1, Lcom/baidu/launcher/ui/animation/FloatProperty;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    check-cast v0, Lcom/baidu/launcher/ui/animation/FloatProperty;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/baidu/launcher/ui/animation/FloatProperty;

    .line 894
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/baidu/launcher/ui/animation/Property;[F)V
    .locals 1
    .parameter "property"
    .parameter "values"

    .prologue
    .line 902
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 903
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 904
    instance-of v0, p1, Lcom/baidu/launcher/ui/animation/FloatProperty;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    check-cast v0, Lcom/baidu/launcher/ui/animation/FloatProperty;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/baidu/launcher/ui/animation/FloatProperty;

    .line 907
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;)V
    .locals 1
    .parameter "propertyName"
    .parameter "keyframeSet"

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 881
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 882
    iput-object p2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 883
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v0, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    .line 884
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V

    .line 898
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 899
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 918
    return-void
.end method

.method public clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .locals 2

    .prologue
    .line 927
    invoke-super {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 928
    .local v0, newPVH:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    iget-object v1, v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v1, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    iput-object v1, v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    .line 929
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 941
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/baidu/launcher/ui/animation/FloatProperty;

    if-eqz v1, :cond_1

    .line 942
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/baidu/launcher/ui/animation/FloatProperty;

    iget v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-virtual {v1, p1, v2}, Lcom/baidu/launcher/ui/animation/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v1, :cond_2

    .line 946
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    iget v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/launcher/ui/animation/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 949
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-eqz v1, :cond_3

    .line 950
    iget v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    iget v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    #calls: Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;IF)V
    invoke-static {p1, v1, v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->access$400(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 953
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 956
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 959
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 960
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 911
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 912
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    check-cast v0, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    .line 913
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 7
    .parameter "targetClass"

    .prologue
    .line 967
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v4, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 973
    sget-object v4, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 974
    .local v3, propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    .line 975
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 976
    .local v1, mJniSetterInteger:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 977
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    .line 980
    .end local v1           #mJniSetterInteger:Ljava/lang/Integer;
    :cond_2
    iget v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-nez v4, :cond_4

    .line 981
    const-string v4, "set"

    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, methodName:Ljava/lang/String;
    #calls: Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {p1, v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->access$500(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    .line 983
    iget v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-eqz v4, :cond_4

    .line 984
    if-nez v3, :cond_3

    .line 985
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 986
    .restart local v3       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .end local v2           #methodName:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 997
    .end local v3           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    iget v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-nez v4, :cond_0

    .line 999
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    goto :goto_0

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Ljava/lang/NoSuchMethodError;
    :try_start_1
    const-string v4, "PropertyValuesHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find native method using JNI, use reflection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method
